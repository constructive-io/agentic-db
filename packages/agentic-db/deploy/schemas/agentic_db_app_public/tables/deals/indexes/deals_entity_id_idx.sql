-- Deploy: schemas/agentic_db_app_public/tables/deals/indexes/deals_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/companies/alterations/alt0000005559


CREATE INDEX deals_entity_id_idx ON agentic_db_app_public.deals USING BTREE ( entity_id );

