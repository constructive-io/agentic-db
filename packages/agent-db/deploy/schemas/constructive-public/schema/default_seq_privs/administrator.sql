-- Deploy: schemas/constructive-public/schema/default_seq_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/constructive-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" GRANT USAGE ON SEQUENCES TO administrator;

