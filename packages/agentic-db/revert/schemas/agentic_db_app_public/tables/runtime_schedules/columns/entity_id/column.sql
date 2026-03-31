-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/entity_id/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN entity_id RESTRICT;


