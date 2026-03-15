-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  ADD CONSTRAINT messages_email_account_id_fkey 
    FOREIGN KEY(email_account_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".email_accounts (id) 
    ON DELETE CASCADE;

