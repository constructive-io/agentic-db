-- Revert: schemas/agent_db_status_public/tables/org_levels/constraints/org_levels_owner_id_fkey/constraint


ALTER TABLE agent_db_status_public.org_levels 
  DROP CONSTRAINT org_levels_owner_id_fkey;


