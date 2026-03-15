-- Deploy: schemas/constructive-private/schema/default_seq_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/constructive-private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" GRANT USAGE ON SEQUENCES TO administrator;

