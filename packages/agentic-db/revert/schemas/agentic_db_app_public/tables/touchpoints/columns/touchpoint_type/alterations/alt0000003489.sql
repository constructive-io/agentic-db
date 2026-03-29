-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/alterations/alt0000003489


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN touchpoint_type DROP NOT NULL;


