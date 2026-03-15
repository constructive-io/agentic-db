-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  ADD CONSTRAINT messages_email_account_id_fkey 
    FOREIGN KEY(email_account_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".email_accounts (id) 
    ON DELETE CASCADE;

