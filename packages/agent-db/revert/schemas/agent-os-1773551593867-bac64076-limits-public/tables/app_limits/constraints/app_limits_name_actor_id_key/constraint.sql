-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/constraints/app_limits_name_actor_id_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  DROP CONSTRAINT app_limits_name_actor_id_key;


