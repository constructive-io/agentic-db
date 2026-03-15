-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  ADD CONSTRAINT secrets_owner_id_name_key 
    UNIQUE (owner_id, name);

