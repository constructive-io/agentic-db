-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/constraints/touchpoints_chunks_touchpoints_id_fkey/constraint


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  DROP CONSTRAINT touchpoints_chunks_touchpoints_id_fkey;


