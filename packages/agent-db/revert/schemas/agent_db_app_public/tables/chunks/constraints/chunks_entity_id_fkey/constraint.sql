-- Revert: schemas/agent_db_app_public/tables/chunks/constraints/chunks_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".chunks 
  DROP CONSTRAINT chunks_entity_id_fkey;


