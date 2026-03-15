-- Revert: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  DROP CONSTRAINT secrets_owner_id_name_key;


