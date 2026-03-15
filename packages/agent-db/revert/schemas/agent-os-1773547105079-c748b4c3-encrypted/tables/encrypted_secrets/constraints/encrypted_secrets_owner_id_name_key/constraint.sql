-- Revert: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/constraints/encrypted_secrets_owner_id_name_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  DROP CONSTRAINT encrypted_secrets_owner_id_name_key;


