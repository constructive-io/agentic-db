-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/indexes/deal_contacts_deal_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/deal_id/column


CREATE INDEX deal_contacts_deal_id_idx ON agentic_db_app_public.deal_contacts USING BTREE ( deal_id );

