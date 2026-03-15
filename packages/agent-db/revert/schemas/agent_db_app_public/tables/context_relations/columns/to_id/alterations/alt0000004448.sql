-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/to_id/alterations/alt0000004448


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN to_id DROP NOT NULL;


