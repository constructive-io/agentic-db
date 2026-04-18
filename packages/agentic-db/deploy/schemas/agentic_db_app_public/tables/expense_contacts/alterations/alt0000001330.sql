-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/alterations/alt0000001330
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.expense_contacts IS E'@behavior +manyToMany';

