using Microsoft.EntityFrameworkCore; // EntityFramework için gerekli kütüphane
using SOFTWAREPROJECT_2024.Models; // Veritabanı modelleri
using Microsoft.AspNetCore.Http;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDistributedMemoryCache();  // Cache'i ekleyin
builder.Services.AddSession(options => 
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);  // Session süresi
    options.Cookie.HttpOnly = true;  // Güvenlik için
    options.Cookie.IsEssential = true;  // Cookie'nin temel olması gerektiğini belirtir
});

// Add services to the container.
builder.Services.AddControllersWithViews();

// Add the DbContext to the service container (for database interaction)
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"))
);



var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

// Use Session middleware before Authorization
app.UseSession(); // Bu satır, session middleware'ini etkinleştirir

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
