-- Revert: schemas/agent_db_app_public/tables/tags/constraints/tags_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".tags 
  DROP CONSTRAINT tags_entity_id_fkey;


