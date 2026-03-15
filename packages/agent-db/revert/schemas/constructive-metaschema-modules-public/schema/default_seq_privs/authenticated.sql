-- Revert: schemas/constructive-metaschema-modules-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-modules-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


