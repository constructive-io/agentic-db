-- Revert: schemas/constructive-metaschema-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-public" REVOKE USAGE ON SEQUENCES FROM administrator;


