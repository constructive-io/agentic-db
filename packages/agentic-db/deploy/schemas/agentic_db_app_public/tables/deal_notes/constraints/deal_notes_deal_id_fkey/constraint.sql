-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/constraints/deal_notes_deal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table


ALTER TABLE agentic_db_app_public.deal_notes 
  ADD CONSTRAINT deal_notes_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES agentic_db_app_public.deals (id) 
    ON DELETE CASCADE;

