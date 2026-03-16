-- Deploy: schemas/agent_db_app_public/tables/companies/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column


GRANT DELETE ON "agent_db_app_public".companies TO authenticated;

