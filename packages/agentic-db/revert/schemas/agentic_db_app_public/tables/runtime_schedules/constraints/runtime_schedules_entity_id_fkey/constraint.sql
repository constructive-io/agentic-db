-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/constraints/runtime_schedules_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP CONSTRAINT runtime_schedules_entity_id_fkey;


