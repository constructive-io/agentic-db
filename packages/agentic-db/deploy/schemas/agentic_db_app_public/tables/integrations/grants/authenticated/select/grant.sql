-- Deploy: schemas/agentic_db_app_public/tables/integrations/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column


GRANT SELECT ON agentic_db_app_public.integrations TO authenticated;

