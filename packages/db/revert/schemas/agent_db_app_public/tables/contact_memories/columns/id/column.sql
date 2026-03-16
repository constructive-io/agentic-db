-- Revert: schemas/agent_db_app_public/tables/contact_memories/columns/id/column


ALTER TABLE "agent_db_app_public".contact_memories 
  DROP COLUMN id RESTRICT;


