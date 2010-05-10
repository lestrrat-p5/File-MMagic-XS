#include "perl-mmagic-xs.h"

MODULE = File::MMagic::XS   PACKAGE = File::MMagic::XS   PREFIX = FMM_

PROTOTYPES: ENABLE

SV *
FMM_create(class)
        char *class;

SV *
FMM_clone(self)
        PerlFMM *self;

SV *
FMM_parse_magic_file(self, file)
        PerlFMM *self;
        char *file;

SV *
FMM_fhmagic(self, svio)
        PerlFMM *self;
        SV *svio;

SV *
FMM_fsmagic(self, filename)
        PerlFMM *self;
        char *filename;

SV *
FMM_bufmagic(self, buf)
        PerlFMM *self;
        SV *buf;

SV *
FMM_ascmagic(self, data)
        PerlFMM *self;
        char *data;

SV *
FMM_get_mime(self, filename)
        PerlFMM *self;
        char *filename;

SV *
FMM_add_magic(self, magic)
        PerlFMM *self;
        char *magic;

SV *
FMM_add_file_ext(self, ext, mime)
        PerlFMM *self;
        char *ext;
        char *mime;

SV *
error(self)
        PerlFMM *self;
    CODE:
        if (! FMM_OK(self))
            croak("Object not initialized.");

        if (self->error == NULL) {
            RETVAL = newSV(0);
        } else {
            RETVAL = newSVsv(self->error);
        }
    OUTPUT:
        RETVAL


void
FMM_destroy(self)
        PerlFMM *self;
    ALIAS:
        DESTROY = 1


