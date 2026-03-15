-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/updated_at/column


ALTER TABLE "agent_db_app_public".context_relations 
  DROP COLUMN updated_at RESTRICT;


