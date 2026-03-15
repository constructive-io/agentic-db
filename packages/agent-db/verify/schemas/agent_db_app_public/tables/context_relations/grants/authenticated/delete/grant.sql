-- Verify: schemas/agent_db_app_public/tables/context_relations/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.context_relations', 'delete', 'authenticated');


