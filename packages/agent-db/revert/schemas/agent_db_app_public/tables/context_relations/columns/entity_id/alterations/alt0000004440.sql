-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/entity_id/alterations/alt0000004440


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN entity_id DROP NOT NULL;


