-- Deploy: schemas/agentic_db_app_public/tables/company_notes/columns/company_id/alterations/alt0000004186
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/columns/company_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.company_notes 
  ALTER COLUMN company_id SET NOT NULL;

