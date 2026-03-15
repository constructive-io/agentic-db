-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/embedding/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".threads TO authenticated;

