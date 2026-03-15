-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/updated_at/alterations/alt0000004491


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN updated_at DROP NOT NULL;


