-- Revert: schemas/agent_db_limits_public/tables/org_limits/constraints/org_limits_name_actor_id_entity_id_key/constraint


ALTER TABLE agent_db_limits_public.org_limits 
  DROP CONSTRAINT org_limits_name_actor_id_entity_id_key;


