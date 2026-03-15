-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/from_id/alterations/alt0000004446


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN from_id DROP NOT NULL;


