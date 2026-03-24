-- Deploy: schemas/agentic_db_user_identifiers_private/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_user_identifiers_private" GRANT USAGE ON SEQUENCES TO administrator;

