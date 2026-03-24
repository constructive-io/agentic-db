-- Revert: schemas/agentic_db_status_public/tables/org_achievements/constraints/org_achievements_actor_id_name_entity_id_key/constraint


ALTER TABLE "agentic_db_status_public".org_achievements 
  DROP CONSTRAINT org_achievements_actor_id_name_entity_id_key;


