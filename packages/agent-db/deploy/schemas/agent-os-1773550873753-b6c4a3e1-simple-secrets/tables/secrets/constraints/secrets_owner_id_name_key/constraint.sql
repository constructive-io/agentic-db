-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  ADD CONSTRAINT secrets_owner_id_name_key 
    UNIQUE (owner_id, name);

