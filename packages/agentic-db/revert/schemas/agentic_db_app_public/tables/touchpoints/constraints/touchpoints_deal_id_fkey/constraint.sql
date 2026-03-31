-- Revert: schemas/agentic_db_app_public/tables/touchpoints/constraints/touchpoints_deal_id_fkey/constraint


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP CONSTRAINT touchpoints_deal_id_fkey;


