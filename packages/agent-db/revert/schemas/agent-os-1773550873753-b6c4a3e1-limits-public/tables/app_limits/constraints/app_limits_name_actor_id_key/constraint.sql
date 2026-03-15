-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/constraints/app_limits_name_actor_id_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limits 
  DROP CONSTRAINT app_limits_name_actor_id_key;


