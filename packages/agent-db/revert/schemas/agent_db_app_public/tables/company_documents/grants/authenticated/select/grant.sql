-- Revert: schemas/agent_db_app_public/tables/company_documents/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.company_documents FROM authenticated;


