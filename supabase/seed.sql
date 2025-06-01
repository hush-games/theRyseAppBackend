-- Seed data for ResourceHub database
-- This file populates the database with 5 users, 5 resources, and 5 labels

-- Insert users into auth.users table (Supabase auth table)
INSERT INTO auth.users (
    id,
    instance_id,
    aud,
    role,
    email,
    encrypted_password,
    email_confirmed_at,
    recovery_sent_at,
    last_sign_in_at,
    raw_app_meta_data,
    raw_user_meta_data,
    created_at,
    updated_at,
    confirmation_token,
    email_change,
    email_change_token_new,
    recovery_token
) VALUES 
    ('11111111-1111-1111-1111-111111111111', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', 'admin@resourcehub.com', '$2a$10$zQm0QH0QH0QH0QH0QH0QHO7ZV0zQm0QH0QH0QH0QH0QH0QHO7ZV0z', NOW(), NULL, NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), '', '', '', ''),
    ('22222222-2222-2222-2222-222222222222', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', 'john@example.com', '$2a$10$zQm0QH0QH0QH0QH0QH0QHO7ZV0zQm0QH0QH0QH0QH0QH0QHO7ZV0z', NOW(), NULL, NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), '', '', '', ''),
    ('33333333-3333-3333-3333-333333333333', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', 'jane@example.com', '$2a$10$zQm0QH0QH0QH0QH0QH0QHO7ZV0zQm0QH0QH0QH0QH0QH0QHO7ZV0z', NOW(), NULL, NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), '', '', '', ''),
    ('44444444-4444-4444-4444-444444444444', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', 'mike@example.com', '$2a$10$zQm0QH0QH0QH0QH0QH0QHO7ZV0zQm0QH0QH0QH0QH0QHO7ZV0z', NOW(), NULL, NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), '', '', '', ''),
    ('55555555-5555-5555-5555-555555555555', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', 'sarah@example.com', '$2a$10$zQm0QH0QH0QH0QH0QH0QHO7ZV0zQm0QH0QH0QH0QH0QHO7ZV0z', NOW(), NULL, NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), '', '', '', '');

-- Insert profiles for the users
INSERT INTO public.profiles (id, role) VALUES
    ('11111111-1111-1111-1111-111111111111', 'admin'),
    ('22222222-2222-2222-2222-222222222222', 'user'),
    ('33333333-3333-3333-3333-333333333333', 'user'),
    ('44444444-4444-4444-4444-444444444444', 'user'),
    ('55555555-5555-5555-5555-555555555555', 'user');

-- Insert labels
INSERT INTO public.labels (label_name, label_color) VALUES
    ('Programming', '#3B82F6'),
    ('Design', '#EF4444'),
    ('Documentation', '#10B981'),
    ('Tutorial', '#F59E0B'),
    ('Reference', '#8B5CF6');

-- Insert resources
INSERT INTO public.resources (id, title, content, created_by, created_at) VALUES
    ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'JavaScript Fundamentals', 'Comprehensive guide to JavaScript basics including variables, functions, and control structures.', '11111111-1111-1111-1111-111111111111', NOW()),
    ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'React Component Patterns', 'Best practices for building reusable React components with modern patterns.', '11111111-1111-1111-1111-111111111111', NOW()),
    ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'CSS Grid Layout Tutorial', 'Step-by-step tutorial on mastering CSS Grid for responsive web layouts.', '22222222-2222-2222-2222-222222222222', NOW()),
    ('dddddddd-dddd-dddd-dddd-dddddddddddd', 'API Design Guidelines', 'Comprehensive guide to designing RESTful APIs with best practices and examples.', '33333333-3333-3333-3333-333333333333', NOW()),
    ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Database Optimization Tips', 'Performance optimization techniques for PostgreSQL and general database design.', '44444444-4444-4444-4444-444444444444', NOW());