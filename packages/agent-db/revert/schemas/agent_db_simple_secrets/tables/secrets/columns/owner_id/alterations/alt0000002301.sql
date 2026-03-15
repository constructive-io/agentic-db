-- Revert: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000002301


ALTER TABLE "agent_db_simple_secrets".secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


