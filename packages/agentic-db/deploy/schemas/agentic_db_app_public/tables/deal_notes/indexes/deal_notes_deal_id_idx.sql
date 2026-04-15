-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/indexes/deal_notes_deal_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/columns/deal_id/column
-- requires: schemas/agentic_db_app_public/tables/company_notes/indexes/company_notes_note_id_idx


CREATE INDEX deal_notes_deal_id_idx ON agentic_db_app_public.deal_notes USING BTREE ( deal_id );

