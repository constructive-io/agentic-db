-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/constraints/touchpoints_deal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table


ALTER TABLE "agentic_db_app_public".touchpoints 
  ADD CONSTRAINT touchpoints_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES "agentic_db_app_public".deals (id) 
    ON DELETE SET NULL;

