-- Deploy: schemas/agentic_db_app_public/tables/company_notes/indexes/company_notes_company_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/columns/company_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_notes/policies/auth_del_entity_membership/policy


CREATE INDEX company_notes_company_id_idx ON agentic_db_app_public.company_notes USING BTREE ( company_id );

