-- Revert: schemas/agentic_db_status_public/tables/app_achievements/constraints/app_achievements_actor_id_name_key/constraint


ALTER TABLE "agentic_db_status_public".app_achievements 
  DROP CONSTRAINT app_achievements_actor_id_name_key;


