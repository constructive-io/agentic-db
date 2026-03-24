-- Verify: schemas/agentic_db_app_public/tables/skill_tools/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.skill_tools', 'delete', 'authenticated');


