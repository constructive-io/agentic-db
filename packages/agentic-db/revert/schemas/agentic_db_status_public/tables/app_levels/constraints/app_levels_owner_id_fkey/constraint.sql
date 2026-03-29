-- Revert: schemas/agentic_db_status_public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint


ALTER TABLE agentic_db_status_public.app_levels 
  DROP CONSTRAINT app_levels_owner_id_fkey;


