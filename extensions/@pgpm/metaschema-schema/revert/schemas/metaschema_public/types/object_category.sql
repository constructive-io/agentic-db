-- Revert schemas/metaschema_public/types/object_category from pg

BEGIN;

DROP TYPE metaschema_public.object_category;

COMMIT;
