-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/constraints/claimed_invites_sender_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites 
  ADD CONSTRAINT claimed_invites_sender_id_fkey 
    FOREIGN KEY(sender_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

