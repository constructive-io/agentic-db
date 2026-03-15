-- Revert: schemas/constructive-metaschema-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


