-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/id/alterations/alt0000004486


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN id DROP NOT NULL;


