-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/id/alterations/alt0000001536
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/id/column
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column



ALTER TABLE agent_db_app_public.notifications 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

