-- Revert: schemas/agentic_db_app_public/tables/project_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.project_contacts FROM authenticated;


