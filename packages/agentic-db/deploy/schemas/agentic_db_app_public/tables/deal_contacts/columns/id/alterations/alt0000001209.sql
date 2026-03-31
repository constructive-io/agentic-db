-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/alterations/alt0000001209
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agentic_db_app_public".deal_contacts 
    ALTER COLUMN id SET DEFAULT uuidv7();

