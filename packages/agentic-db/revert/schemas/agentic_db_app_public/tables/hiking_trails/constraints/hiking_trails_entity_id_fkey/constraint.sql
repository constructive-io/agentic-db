-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/constraints/hiking_trails_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DROP CONSTRAINT hiking_trails_entity_id_fkey;


