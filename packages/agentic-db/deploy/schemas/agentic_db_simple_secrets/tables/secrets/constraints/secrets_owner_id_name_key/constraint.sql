-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_simple_secrets.secrets 
  ADD CONSTRAINT secrets_owner_id_name_key 
    UNIQUE (owner_id, name);

