-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/constraints/secrets_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


ALTER TABLE agentic_db_simple_secrets.secrets 
  ADD CONSTRAINT secrets_pkey PRIMARY KEY (id);

