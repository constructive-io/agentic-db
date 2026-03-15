-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/sender_id/alterations/alt0000000756
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/sender_id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
    ALTER COLUMN sender_id SET DEFAULT jwt_public.current_user_id();

